# {{ cookiecutter.handle }}: {{ cookiecutter.module_name }}

![Pipeline Level: {{ cookiecutter.level }}](https://img.shields.io/badge/Pipeline-{{ cookiecutter.level }}-blue)
![Diagram Index: {{ cookiecutter.diagram_index }}](https://img.shields.io/badge/Diagram__Index-{{ cookiecutter.diagram_index }}-blue)
![Difficulty: {{ cookiecutter.difficulty }}](https://img.shields.io/badge/Difficulty-{{ cookiecutter.difficulty }}-blue)

## SPHEREx Science Data Center document

This is the repository for the *{{ cookiecutter.module_name }}* pipeline module description.

## Links

- [Releases]({{ cookiecutter.handle|lower|slugify }}/releases)
- [GitHub Actions CI]({{ cookiecutter.handle|lower|slugify }}/actions/workflows/ci.yaml). *Click on a run to download a PDF preview.*
- [Browse other SSDC documentation repositories](https://github.com/search?q=topic%3Assdc-docs+org%3ASPHEREx&type=repositories)
- [spherex-tex](https://github.com/SPHEREx/spherex-tex). *Learn how to compile this document and update the `spherex` BibTeX bibliography.*
