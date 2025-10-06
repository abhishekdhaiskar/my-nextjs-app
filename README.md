# My Next.js App (DevOps Assessment)

## Overview
Simple Next.js app containerized with Docker, CI to GHCR, and Kubernetes manifests for Minikube.

## Local
Install and run:
```bash
npm install
npm run dev
```

## Docker
Build:
```bash
docker build -t my-nextjs-app:local .
docker run --rm -p 3000:3000 my-nextjs-app:local
```

## Kubernetes (Minikube)
Start minikube:
```bash
minikube start
kubectl apply -f k8s/
minikube service nextjs-service --url
```

## CI
Workflow at `.github/workflows/docker-publish.yml` pushes to:
`ghcr.io/<YOUR_USERNAME>/my-nextjs-app:latest`
