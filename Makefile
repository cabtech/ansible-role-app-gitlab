lint: .alint .ylint 

.alint: .config/ansible-lint.yml */*.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.ylint: .config/yamllint */*.yml
	yamllint --config-file=.config/yamllint .
	@touch $@

clean:
	@/bin/rm -f .alint .ylint
