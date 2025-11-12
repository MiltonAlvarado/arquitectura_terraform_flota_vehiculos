# Guía Paso a Paso: Implementación del Proyecto

## Checklist de Preparación

Antes de comenzar, debemos de tener:

- Cuenta de Azure con suscripción activa
- Azure CLI instalado y configurado
- Terraform instalado (versión 1.0+)
- Git instalado
- Cuenta de GitHub
- Editor de código

---

## Configurar Azure CLI

```bash
# Instalar Azure CLI 
# Windows: https://aka.ms/installazurecliwindows
# macOS: brew install azure-cli
# Linux: curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Iniciar sesión
az login

# Verificar la suscripción
az account show

# Establecer la suscripción correcta
az account list --output table
az account set --subscription "NOMBRE_O_ID_DE_TU_SUSCRIPCION"
```

---

## Instalar Terraform

```bash
# Verificar si ya está instalado
terraform --version

# Si no está instalado:
# Windows: Descargar de https://www.terraform.io/downloads
# macOS: brew install terraform
# Linux: 
wget https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_linux_amd64.zip
unzip terraform_1.6.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/
```

---

## Clonar Repositorio de GitHub
git clone https://github.com/MiltonAlvarado/arquitectura_terraform_flota_vehiculos.git


## Personalizar Variables

Editar `terraform.tfvars` con los valores únicos que se tengan:

```hcl
resource_group_name = " "
location            = " "
sql_server_name     = " "
storage_account_name = " "  # Único globalmente!
data_factory_name    = " "
databricks_workspace_name = " "
key_vault_name       = " "  
```

 El `storage_account_name` debe:
- Ser único en todo Azure
- Contener solo letras minúsculas y números
- Tener entre 3-24 caracteres

---

## Desplegar Infraestructura

```bash
# 1. Inicializar Terraform
terraform init

# 2. Validar sintaxis
terraform validate

# 3. Ver qué se va a crear 
terraform plan

# 4. Desplegar recursos 
terraform apply

# "Do you want to perform these actions?"
# Respuesta: yes
```

---




## POR HACER AL FINAL






## Capturar Evidencias

### Captura 1: Terminal con `terraform apply`
```bash

```
### Captura 2: Azure Portal - Resource Group

### Captura 3: Azure SQL Database
Dentro del Resource Group, clic en SQL Server
Ir a "Databases" → Click en "VehiculosDB"
Captura mostrando el estado "Online" y tier "S0"

### Captura 4: Data Lake con Contenedores
1. Ir al Storage Account
2. Click en "Containers" (o "Data Lake Gen2" → "Filesystems")
3. Captura mostrando los contenedores "historicos" y "telemetria"

### Captura 5: Data Factory
1. Ir a Azure Data Factory en el Resource Group
2. Click en "Author & Monitor" (o "Open Azure Data Factory Studio")
3. Captura del workspace con Linked Services

### Captura 6: Databricks Workspace
1. Ir a Azure Databricks en el Resource Group
2. Captura mostrando el workspace activo

### Captura 7: Key Vault con Secretos
1. Ir a Key Vault en el Resource Group
2. Click en "Secrets"
3. Captura mostrando los 3 secretos creados:
   - sql-connection-string
   - datalake-access-key
   - databricks-workspace-url

---

## Organizar Capturas

```bash
# Crear carpeta para screenshots
mkdir -p screenshots

# Renombrar capturas según esta estructura:
screenshots/
├── 01-terraform-apply.png
├── 02-azure-resource-group.png
├── 03-sql-database.png
├── 04-data-lake-containers.png
├── 05-data-factory.png
├── 06-databricks-workspace.png
└── 07-key-vault-secrets.png
```

---

## Agregar Diagrama

1. Guardar el diagrama de arquitectura como `arquitectura.svg`
2. Crear una carpeta:

```bash
mkdir -p diagrams
mv arquitectura.svg diagrams/
```

---

---

## Actualizar GitHub


---

## Crear Entrada en el Portafolio

## Crear Archivo de Entrega

---

## Verificación Final

- Todos los archivos Terraform están en el repositorio
- El README está completo y personalizado
- Las 7 capturas de pantalla están incluidas
- El diagrama de arquitectura está en la carpeta `diagrams/`
- `terraform.tfvars` NO está en GitHub (debe estar en .gitignore)
- Los enlaces en `entrega.txt` funcionan correctamente
- La entrada del portafolio está publicada y accesible
- Las reflexiones finales están completas en el README

---


## Estimación de Costos

Recursos corriendo 24/7:

| Servicio        | Tier                | Costo Mensual (aprox.) |
|----------       |------               |------------------------|
| SQL Database S0 | 10 DTU              | ~$15 USD               |
| Storage Account | Standard LRS        | ~$5 USD                |
| Data Factory    | Sin pipeline activo | ~$1 USD                |
| Databricks      | Sin cluster activo  | ~$0 USD                |
| Key Vault       | Standard            | ~$1 USD                |
| **TOTAL**       |                     | **~$22 USD/mes**       |


---
