# Laboratório Azure: Gerenciamento de Máquinas Virtuais (IaaS)

Este repositório documenta um laboratório prático com foco em **Infraestrutura como Serviço (IaaS)** usando **Microsoft Azure**. Ele inclui o processo completo de criação, dimensionamento, escalonamento, gestão de discos e limpeza de recursos para evitar cobranças indevidas.

---

## 📊 Objetivo

Criar uma ou mais máquinas virtuais no Azure para fins de testes, entendendo as opções de configuração via Portal, PowerShell e CLI. O ambiente é projetado para ser:

* Resiliente
* Escalável
* Flexível quanto ao uso de discos
* Custo-efetivo

---

## 🚀 Tecnologias Utilizadas

* Azure Portal
* Azure PowerShell
* Azure CLI
* Azure Resource Groups
* Azure Virtual Machines
* Azure VM Scale Sets
* Azure Load Balancer / Application Gateway
* Azure Discos Gerenciados
* Azure Monitor (para escalonamento automático)

---

## 📓 Etapas Realizadas

### 1. Planejamento

* Definir a finalidade da VM (teste, produção, web, banco de dados)
* Avaliar necessidade de resiliência (VM isolada x Scale Set)
* Decidir se será usada rede interna ou pública

### 2. Criação da VM

* Via Portal, PowerShell e CLI
* Seleção de imagem, tamanho (SKU), disco, rede e método de acesso (SSH ou senha)

### 3. Dimensionamento e Resiliência

* Uso de Scale Sets para alta disponibilidade
* Configuração de Load Balancer (se web)
* Configuração de escalonamento automático (CPU, agendamento)

### 4. Gerenciamento de Discos

* Anexar novo disco via CLI
* Desanexar e reutilizar discos em outras VMs

### 5. Limpeza de Recursos

* Exclusão completa do Resource Group após os testes:

```bash
az group delete --name lab-rg --yes --no-wait
```

---

## 🔧 Scripts Incluídos

### PowerShell

```powershell
New-AzVM -ResourceGroupName "lab-rg" -Name "vm-teste" -Location "eastus" -OpenPorts 80,3389
```

### Azure CLI

```bash
az vm create --resource-group lab-rg --name vm-teste --image UbuntuLTS --generate-ssh-keys --size Standard_B1s
```

### Auto Scale

```bash
az monitor autoscale create --resource-group lab-rg --resource scaleWebApp --resource-type Microsoft.Compute/virtualMachineScaleSets --name autoscaleRules --min-count 1 --max-count 5 --count 2
```

---

## 📄 Licença

Este repositório é livre para uso educacional.

---

## ✍️ Autor

**Nataly** — Desenvolvido como parte do estudo de laboratório sobre Azure IaaS.

---

## 🎓 Recursos Recomendados

* [Documentação Azure VMs](https://learn.microsoft.com/pt-br/azure/virtual-machines/)
* [CLI de VM](https://learn.microsoft.com/pt-br/cli/azure/vm)
* [PowerShell para Azure](https://learn.microsoft.com/pt-br/powershell/azure/)

---

Sinta-se à vontade para contribuir, comentar ou sugerir melhorias!

---

⚡ **Dica**: Use este repositório como base para outros laboratórios. Basta clonar e adaptar os scripts e estruturas conforme a nova proposta!
