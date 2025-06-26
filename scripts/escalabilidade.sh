az monitor autoscale create \
  --resource-group lab-rg \
  --resource scaleWebApp \
  --resource-type Microsoft.Compute/virtualMachineScaleSets \
  --name autoscaleRules \
  --min-count 1 \
  --max-count 5 \
  --count 2

az monitor autoscale rule create \
  --resource-group lab-rg \
  --autoscale-name autoscaleRules \
  --condition "Percentage CPU > 75 avg 5m" \
  --scale out 1
