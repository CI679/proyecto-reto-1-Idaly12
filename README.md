# Project Title
* Proyecto del primer parcial

## Getting Started

* El objetivo de este proyecto es desarrollar una aplicación en Bash que ayude a que otras personas adquieran conocimientos sobre las diferentes metodologías de desarrollo de software. Además, permite que quienes ya tienen experiencia en el tema puedan brindar más información para todos los usuarios, tanto de metodologías ágiles como tradicionales.

### Prerequisites

* Como requisitos para el proyecto necesitamos tener docker instalado

### Installing

* Se va a entrar a docker hub en el repositorio 7lucas24/meto-desa-uach:latest
* Una vez descargado se le va a dar docker image run -it  7lucas24/meto-desa-uach:latest -a|-t 


## Running the tests

* Actualmente, las pruebas del proyecto se basan en la ejecución de los scripts para verificar que las rutas y opciones funcionen correctamente.

### Break down into end to end tests

* Estas pruebas aseguran que la navegación en el menú de la aplicación funcione correctamente y que se despliegue la información adecuada para cada metodología.
* -Ejemplo: Prueba para validar la ejecución del menú ágil
* //docker run -it 7lucas24/meto-desa-uach:latest -a
* -Se espera que despliegue información sobre Scrum, XP, etc.

### And coding style tests

* Estas pruebas verifican que el código Bash mantenga una sintaxis limpia, comentarios claros y buenas prácticas de scripting.
* -Uso de ShellCheck para revisar estilo y errores comunes
* shellcheck main.sh

## Deployment

Para desplegar este proyecto en un entorno real, se recomienda contar con Docker instalado en el servidor objetivo y ejecutar el contenedor directamente desde Docker Hub. También se puede integrar con sistemas de documentación o servidores de aprendizaje mediante contenedores personalizados.
## Built With

* Bash - Lenguaje principal del script

* Docker - Contenedor para distribuir la aplicación

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors
* Luis Arturo Hernández Castillo 
* Eduardo Tristan Chavez 
* Idaly Guadalupe Morales Robredo
* Adrian Caleb Jaramillo Flores 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* A los profesores de la UACH por guiar el aprendizaje del desarrollo de software
* A Docker por permitir empaquetar fácilmente la aplicación
* A quienes contribuyeron con documentación y ejemplos de metodologías
