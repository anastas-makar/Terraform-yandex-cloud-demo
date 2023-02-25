# Это демо для создания виртуалки в [Яндекс.Облаке](https://cloud.yandex.ru/services/compute) при помощи Terraform
Будет создана одна ВМ с указанными параметрами. 

# Шаги для настройки:

- Сгенерировать авторизованный ключ и добавить его в файл key.json по [инструкции](https://cloud.yandex.ru/docs/cli/operations/authentication/service-account)
- Заполнить terraform.tfvars

- Добавить свой публичный ключ в meta.txt для того, чтобы можно было подключиться по ssh. Там же можно выбрать имя пользователя (изначально указан ansible)

## Команды, которые могут пригодиться при работе с [yandex cli](https://cloud.yandex.ru/docs/cli/operations/install-cli):

- Посмотреть список подсетей:
```bash
yc vpc subnets list
```

- Список доступных образов:
```bash
yc compute image list --folder-id standard-images
```

## Запуск terraform

- Зайти в корень этого проекта и выполнить:
 ```bash
 terraform init
 ```
 
 - Убедиться, что конфигурация валидна:
```bash
terraform validate
```

- Применить настройки и создать инстанс:
```bash
terraform apply
```
- Зайти на ВМ по ssh (внутренний и внешний ip выводятся после усшеного выполнения terraform apply):
```bash
ssh ansible@<your vm ip>
```

- Уничтожить виртуалку, если это необходимо:
```bash
terraform destroy
```
