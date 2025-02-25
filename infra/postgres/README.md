### Install


``` sh 
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```
``` sh 
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```
``` sh 
sudo apt update && sudo apt install terraform
```

### Init
``` sh 
terraform init
```

### Planejar a Infraestrutura
``` sh 
terraform plan
```

### Aplicar a Infraestrutura
``` sh 
terraform apply -auto-approve
```


### Destruir a Infraestrutura
``` sh 
terraform destroy -auto-approve
```

## Lambda


### Zip
``` sh 
zip function.zip lambda_function.py
```


### Get Api Gateway URL
``` sh 
terraform output api_gateway_url
```


