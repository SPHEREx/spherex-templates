# {{ cookiecutter.handle }}: {{ cookiecutter.req_name }} Requirement Closure Memo


## SPHEREx Science Data Center Test Report document

This is the repository for the *{{ cookiecutter.req_name }}* Requirement Closure Memo.

- JPL DOORS ID for this requirement: {{ cookiecutter.req_doors_id }}
{% if cookiecutter.req_jira_id != 'SVV-999' -%}
- IPAC JIRA ticket for this requirement: {{ cookiecutter.req_jira_id }}
{%- endif %}

## Links

- [Releases](https://github.com/IPAC-SW/{{ cookiecutter.handle|lower }}/releases) of this document
- [Continuous Integration on GitHub Actions](https://github.com/IPAC-SW/{{ cookiecutter.handle|lower }}/actions/workflows/ci.yaml): *Click on a run to download a PDF preview*
- [Browse other SSDC documentation repositories on IPAC-SW](https://github.com/search?q=topic%3Assdc-docs+org%3AIPAC-SW&type=repositories)
- [spherex-tex](https://github.com/SPHEREx/spherex-tex): *Learn how to compile this document and update the `spherex` BibTeX bibliography*
