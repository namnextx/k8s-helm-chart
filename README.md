# k8s-helm-deployment
include all helm chart of a platform

how to use these chart?
## 1. Option one (using these charts in local)
### 1.1 add helm repo
``` 
helm repo add namnextx  namnextx/java-application-chart
```
### 1.2. install helm 
```
helm install lib namnextx/java-application-chart
```
### 1.3. verify release helm chart
```
helm search repo namnextx
```
![](../../../../../../../../../var/folders/mt/c0y_p2hx5sd_1pldb180gjtr0000gn/T/TemporaryItems/NSIRD_screencaptureui_VODIge/Screenshot 2022-12-13 at 22.40.21.png)

## 2. Option two (using these chart in cloud k8s cluster)