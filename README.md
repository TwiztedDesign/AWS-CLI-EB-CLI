# AWS-CLI-EB-CLI commands

## Inputs

### `command`

**Required** The command to run on cli.

## Example usage


```YAML
uses: ko3ak81/AWS-CLI-EB-CLI@v1.0.0
with:
  command: './bashscript.sh'
env:
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  AWS_DEFAULT_REGION: "us-east-1"
```
Or

```YAML
uses: ko3ak81/AWS-CLI-EB-CLI@v1.0.0
with:
  command: 'eb deploy ${{ secrets.ENVIRONMENT_NAME }}'
env:
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  AWS_DEFAULT_REGION: "us-east-1"
```
