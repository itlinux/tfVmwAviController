#!/bin/bash
echo $TF_VAR_test_arcade
if [[ $TF_VAR_test_arcade == "true" || $TF_VAR_test_arcade == "false" ]] ; then
  echo "test-true"
  tee toto.tf > /dev/null <<EOT
variable "dhcp" {
  default = true
}
EOT
fi
unset TF_VAR_test_arcade
echo $TF_VAR_test_arcade
