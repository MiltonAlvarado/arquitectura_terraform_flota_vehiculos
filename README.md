# Implementación del Proyecto

Antes de comenzar, debemos de tener:

- Cuenta de Azure con suscripción activa
- Azure CLI instalado y configurado
- Terraform instalado (versión 1.0+)
- Git instalado
- Cuenta de GitHub
- Editor de código



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

## CAPTURAS











---

## Organizar Capturas



---

## Agregar Diagrama


```bash


```





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
