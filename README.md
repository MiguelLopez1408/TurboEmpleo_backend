# TurboEmpleo

Proyecto web para registro y gestión de aspirantes y empresas.

## Requisitos
- Python 3.10+
- Node.js 18+
- MySQL (o SQLite para pruebas)
- Git

## Instalación

### 1. Clonar el repositorio
```bash
git clone https://github.com/MiguelLopez14/TurboEmpleo.git
cd TurboEmpleo
```

### 2. Backend (Django)
```bash
cd backend
python -m venv venv
# En Windows:
venv\Scripts\activate
# En Linux/Mac:
source venv/bin/activate
pip install -r requirements.txt
```

#### Configura la base de datos en `mi_backend/settings.py`
- Edita los datos de conexión a MySQL si es necesario.

#### Migraciones
```bash
python manage.py makemigrations
python manage.py migrate
```

#### Crear superusuario
```bash
python manage.py createsuperuser
```

#### Iniciar servidor
```bash
python manage.py runserver
```

### 3. Frontend (React)
```bash
cd ../frontend
npm install
npm run dev
```

## Archivos media
- Si tienes archivos en la carpeta `backend/media`, cópialos manualmente si quieres mostrarlos.

## Notas
- Accede al admin de Django en [http://127.0.0.1:8000/admin/](http://127.0.0.1:8000/admin/)
- Si usas MySQL, asegúrate de tener el servicio activo y la base creada.
- Si tienes problemas con dependencias, revisa las versiones en `requirements.txt` y `package.json`.

## Contacto
- Autor: Miguel Lopez
- Repositorio: https://github.com/MiguelLopez14/TurboEmpleo
