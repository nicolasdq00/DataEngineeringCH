# Proyecto Terraform - Unidad 1

## Cómo inicializar el proyecto

Para inicializar el proyecto se debe tener instalado Git y Terraform. Una vez estén instalados:

1. Clonar el repositorio y entrar a la carpeta del proyecto (Terraform solo trabaja en la carpeta donde se ejecuta):

```bash
git clone <URL-DE-TU-REPO>
cd <CARPETA-DEL-REPO>/Unidad_1
```

2. Comprobar la versión de Terraform. Debe ser igual o mayor a la establecida en el `provider.tf`:

```bash
terraform version
```

3. Inicializar Terraform:

```bash
terraform init
```

4. Verificar que el formato y espaciado sea correcto:

```bash
terraform fmt
```

5. Confirmar que la configuración que se estableció es válida:

```bash
terraform validate
```

## Convención de nombres

La convención usada para el bucket S3 fue usando el nombre del proyecto, junto con el environment que se está usando para que sea fácil identificarlo, y `raw`, porque no tiene nada modificado, es su versión base.

Fórmula: `<project_name>-<environment>-raw`

Ejemplo con los valores actuales: `environment-project-1-dev-raw`


## Estructura del proyecto y por qué se separaron los archivos

| Archivo | Para qué sirve |
| --- | --- |
| `provider.tf` | Realizar la configuración inicial de Terraform |
| `variables.tf` | Establecer variables y llevar control de valores desde allí |
| `terraform.tfvars` | Definición de Valores en la variables |
| `main.tf` | Configuración de la relacion de AWS con Terraform |
| `outputs.tf` | Salidas que se quieran mostrar acordes al mani.tf |
| `.gitignore` | Ignora los archivos que crea terraform mas las varialbes para que no se muestren a todos |

El motivo de separar los archivos de esta forma es poder tener las configuraciones establecidas, por ejemplo en `provider.tf`, para eventuales proyectos o configuraciones, y que sea fácilmente replicable y escalable.

A su vez, también se establecieron variables para no hacer hardcode en Terraform y permitir que todo se maneje desde el control de variables.
