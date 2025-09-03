name: Trigger DDIQA Deployment from Master

on:
  workflow_dispatch:  # Allows manual trigger

jobs:
  call-deploy:
    uses: your-org/your-repo/.github/workflows/Deploy to DDIQA_Sandbox.yml@DDIQAGH
    secrets:
      PAT_TOKEN: ${{ secrets.PAT_TOKEN }}
