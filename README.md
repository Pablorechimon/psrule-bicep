# psrule-bicep
This repo is a Github action that needs to be used while working with Bicep IaC modules. It was created to enforce Security guardrails on Azure Deployments.

## Pre-requisites
This action allow you to work with Bicep modules that lives on an ACR registry, so in order to work Azure Login action should be used before in order to allow PSRule to work with Bicep modules that lives on the ACR.

## Instructions
You can use this action by adding the next action to your workflow.
# code block
    - name: Run PSRule
      uses: pablorechimon/psrule-bicep@latest
      with:
        inputPath: 'string'

## psrule-bicep file purpose

### PSRule Configuration Files.
* **ps-rule.yml**: This is the PSRule configuration file, this needs to be stored at the root of the destined repository
* **bicepconfig.json**: This file enable expansion for different PSRule capabilities. At this moment is enabling the use of Bicepparams and ACR to store Bicep modules.

### Worker.
* **psrule_configuration.sh**: This bash will copy above files to destination repository.

      