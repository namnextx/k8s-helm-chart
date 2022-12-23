# k8s-helm-chart

## 1. Test helm chart
### 1.0. review the template chart
    helm template <relea-name> <folder-chart> -f <value-file>
- Example:
    ```
    helm template hello-world ./charts/java-application-chart -f ./charts/java-application-chart/values.yaml
    ```
### 1.1 Lint chart:
    helm lint <chart-folder>
- Example:
    ```
     helm lint ./charts/java-application-chart
    ```

## 2. Kong Ingress on Google Kubernetes Engine
### 2.0. Install Kong Ingress Controller
Link: https://docs.konghq.com/kubernetes-ingress-controller/latest/deployment/gke/
### 2.1. Config an ingress
Link: https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/getting-started/