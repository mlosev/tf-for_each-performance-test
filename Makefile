.PHONY: venv
venv:
	python3 -m venv venv
	venv/bin/pip install -r requirements.txt


terraform-0.12:
	curl -L https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_$$(uname -s | tr '[:upper:]' '[:lower:]')_amd64.zip -o $@.zip
	unzip $@.zip
	mv terraform $@
	rm -r $@.zip


terraform-0.13:
	curl -L https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_$$(uname -s | tr '[:upper:]' '[:lower:]')_amd64.zip -o $@.zip
	unzip $@.zip
	mv terraform $@
	rm -r $@.zip


users.yaml: venv
	./generate_users_yaml.py


.PHONY: users-0.12-fast
users-0.12-fast: terraform-0.12
	make -C $@ plan TERRAFORM=../terraform-0.12


.PHONY: users-0.12-slow
users-0.12-slow: terraform-0.12
	make -C $@ plan TERRAFORM=../terraform-0.12


.PHONY: users-0.13-fast
users-0.13-fast: terraform-0.13
	make -C $@ plan TERRAFORM=../terraform-0.13


.PHONY: users-0.13-slow
users-0.13-slow: terraform-0.13
	make -C $@ plan TERRAFORM=../terraform-0.13

