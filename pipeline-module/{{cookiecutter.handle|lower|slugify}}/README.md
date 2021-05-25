# {{ cookiecutter.handle }}: {{ cookiecutter.module_name }}

![Pipeline Level: {{ cookiecutter.level }}](https://img.shields.io/badge/Pipeline-{{ cookiecutter.level }}-{% if cookiecutter.level == "L1" %}88BFFE{% elif cookiecutter.level == "L2" %}1AC604{% elif cookiecutter.level == "L3" %}BEB1D0{% else %}FEBCFF{% endif %})
![Diagram Index: {{ cookiecutter.diagram_index }}](https://img.shields.io/badge/Diagram__Index-{{ cookiecutter.diagram_index }}-{% if cookiecutter.level == "L1" %}88BFFE{% elif cookiecutter.level == "L2" %}1AC604{% elif cookiecutter.level == "L3" %}BEB1D0{% else %}FEBCFF{% endif %})
![Difficulty: {{ cookiecutter.difficulty }}](https://img.shields.io/badge/Difficulty-{{ cookiecutter.difficulty }}-{% if cookiecutter.difficulty == "High" %}red{% elif cookiecutter.difficulty == "Medium" %}yellow{% elif cookiecutter.difficulty == "Low" %}green{% else %}blue{% endif %})

## SPHEREx Science Data Center document

This is the repository for the *{{ cookiecutter.module_name }}* pipeline module description.

## Links

- [Releases]({{ cookiecutter.handle|lower|slugify }}/releases) of this document
- [Continuous Integration on GitHub Actions]({{ cookiecutter.handle|lower|slugify }}/actions/workflows/ci.yaml): *Click on a run to download a PDF preview*
- [Browse other SSDC documentation repositories](https://github.com/search?q=topic%3Assdc-docs+org%3ASPHEREx&type=repositories)
- [spherex-tex](https://github.com/SPHEREx/spherex-tex): *Learn how to compile this document and update the `spherex` BibTeX bibliography*
