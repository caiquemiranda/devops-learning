# Terraform e Ansible - Guia de Comandos Essenciais

Este documento tem como objetivo apresentar os principais comandos do **Terraform** e do **Ansible**, ferramentas amplamente utilizadas para provisionamento e configuração de infraestrutura. As explicações estão em português, enquanto os comandos permanecem em inglês.

## Sumário

1. [Terraform](#terraform)
   - [Comandos Essenciais](#comandos-essenciais-do-terraform)
   - [Fluxo Básico](#fluxo-basico-do-terraform)
2. [Ansible](#ansible)
   - [Comandos Essenciais](#comandos-essenciais-do-ansible)
   - [Estrutura de Diretórios](#estrutura-de-diretorios-do-ansible)

---

## Terraform

O **Terraform** é uma ferramenta de infraestrutura como código (IaC) que permite gerenciar recursos em diferentes provedores de nuvem como AWS, Azure e Google Cloud.

### Comandos Essenciais do Terraform

- **`terraform init`**
  - Inicializa o diretório de trabalho contendo os arquivos de configuração do Terraform.
  ```bash
  terraform init
  ```

- **`terraform plan`**
  - Gera um plano de execução que mostra o que será criado, alterado ou destruído na infraestrutura.
  ```bash
  terraform plan
  ```

- **`terraform apply`**
  - Aplica as alterações necessárias para alcançar o estado desejado da infraestrutura.
  ```bash
  terraform apply
  ```

- **`terraform destroy`**
  - Remove todos os recursos gerenciados pelo Terraform.
  ```bash
  terraform destroy
  ```

- **`terraform validate`**
  - Valida os arquivos de configuração para verificar erros de sintaxe ou lógica.
  ```bash
  terraform validate
  ```

- **`terraform fmt`**
  - Formata os arquivos de configuração para garantir a consistência.
  ```bash
  terraform fmt
  ```

### Fluxo Básico do Terraform

1. **Escrever os arquivos de configuração**:
   - Criar arquivos `.tf` contendo a definição dos recursos.

2. **Inicializar o ambiente**:
   ```bash
   terraform init
   ```

3. **Planejar as mudanças**:
   ```bash
   terraform plan
   ```

4. **Aplicar as configurações**:
   ```bash
   terraform apply
   ```

5. **Destruir a infraestrutura** (quando necessário):
   ```bash
   terraform destroy
   ```

---

## Ansible

O **Ansible** é uma ferramenta de automação que permite configurar sistemas, implantar aplicativos e gerenciar infraestruturas.

### Comandos Essenciais do Ansible

- **`ansible`**
  - Executa tarefas ad hoc em um ou mais hosts.
  ```bash
  ansible all -m ping
  ```

- **`ansible-playbook`**
  - Executa um playbook, que é uma coleção de tarefas para configurar ou gerenciar sistemas.
  ```bash
  ansible-playbook playbook.yml
  ```

- **`ansible-inventory`**
  - Exibe ou valida o inventário de hosts.
  ```bash
  ansible-inventory --list
  ```

- **`ansible-doc`**
  - Mostra a documentação de módulos do Ansible.
  ```bash
  ansible-doc -l
  ```

- **`ansible-galaxy`**
  - Gerencia roles no Ansible Galaxy.
  ```bash
  ansible-galaxy install nome_da_role
  ```

### Estrutura de Diretórios do Ansible

Uma estrutura comum para projetos do Ansible pode ser assim organizada:

```
project/
├── ansible.cfg       # Arquivo de configuração do Ansible
├── inventory/        # Inventário de hosts
│   ├── hosts.yml
├── roles/            # Diretório para roles reutilizáveis
│   ├── common/
│   │   ├── tasks/
│   │   └── templates/
├── playbook.yml      # Playbook principal
```
