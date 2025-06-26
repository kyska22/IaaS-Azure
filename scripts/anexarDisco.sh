az disk create \
  --resource-group lab-rg \
  --name diskExtra \
  --size-gb 10 \
  --sku Standard_LRS \
  --output json

az vm disk attach \
  --resource-group lab-rg \
  --vm-name vm-teste \
  --name diskExtra
