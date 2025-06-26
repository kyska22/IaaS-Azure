az vmss create \
  --resource-group lab-rg \
  --name scaleWebApp \
  --image UbuntuLTS \
  --upgrade-policy-mode automatic \
  --admin-username azureuser \
  --generate-ssh-keys \
  --instance-count 2 \
  --load-balancer lb-web
