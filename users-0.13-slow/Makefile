ifeq ($(TERRAFORM),)
$(error TERRAFORM is not set or empty)
endif

.PHONY: plan
plan:
	$(TERRAFORM) init
	time $(TERRAFORM) plan
