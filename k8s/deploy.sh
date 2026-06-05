#!/bin/bash
# ============================================================
# deploy.sh — Script de despliegue completo para Noonas en minikube
# Ejecutar desde la raíz del proyecto (donde está docker-compose.yml)
# ============================================================

set -e  # Para si algo falla

echo "===> [1/6] Levantando minikube..."
minikube start
echo "      ✓ minikube listo"

echo ""
echo "===> [2/6] Apuntando Docker CLI al daemon de minikube..."
eval $(minikube docker-env)
echo "      ✓ Docker CLI apunta a minikube"

echo ""
echo "===> [3/6] Construyendo imágenes dentro de minikube..."
# Backend — FastAPI
docker build -t noonas-api:latest ./backend/
# Frontend — nginx
docker build -t noonas-frontend:latest ./frontend/
echo "      ✓ Imágenes construidas"

# Verifica que existen
echo "      Imágenes disponibles en minikube:"
minikube image ls | grep noonas

echo ""
echo "===> [4/6] Creando namespace y Secret..."
kubectl apply -f k8s/00-namespace.yaml

# IMPORTANTE: antes de este paso edita backend/.env
# y asegúrate que DATABASE_URL apunta a "db-service":
#   DATABASE_URL=postgresql+asyncpg://usuario:password@db-service:5432/nombre_db
kubectl create secret generic noonas-secrets \
  --from-env-file=./backend/.env \
  --namespace=noonas \
  --dry-run=client -o yaml | kubectl apply -f -
echo "      ✓ Secret 'noonas-secrets' creado/actualizado"

echo ""
echo "===> [5/6] Aplicando manifests..."
kubectl apply -f k8s/02-pvcs.yaml
kubectl apply -f k8s/03-db.yaml
kubectl apply -f k8s/04-api.yaml
kubectl apply -f k8s/05-frontend.yaml
echo "      ✓ Manifests aplicados"

echo ""
echo "===> [6/6] Esperando que los pods levanten..."
kubectl rollout status deployment/db       -n noonas --timeout=120s
kubectl rollout status deployment/api      -n noonas --timeout=120s
kubectl rollout status deployment/frontend -n noonas --timeout=60s

echo ""
echo "============================================"
echo "  ✅ Despliegue completo"
echo "============================================"
echo ""
echo "Estado de los pods:"
kubectl get pods -n noonas
echo ""
echo "Para abrir el frontend en el browser:"
echo "  minikube service frontend-service --url -n noonas"
echo ""
echo "Para acceder al backend desde el browser:"
echo "  kubectl port-forward svc/api-service 8000:8000 -n noonas"
echo "  → luego abre http://localhost:8000/docs"
echo ""
echo "Para ver logs:"
echo "  kubectl logs -f deployment/api      -n noonas"
echo "  kubectl logs -f deployment/db       -n noonas"
echo "  kubectl logs -f deployment/frontend -n noonas"
