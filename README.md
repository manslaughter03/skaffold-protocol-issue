## Skaffold override protocols issue

### Requirements

* kind
* helm
* kubectl
* skaffold (v2.0.1)

Run kind cluster:

```bash
./scripts/deploy-kind.sh
```

Or if you use nix, you only have to run `nix-shell`.

## Step to reproduce

* Run the following command:

```bash
skaffold debug --protocols=pydevd
```

## Outputs deployment and logs

You can find deployment generate when we run `skaffold debug` [./data/deployment.yaml](./data/deployment.yaml) and log output of skaffold command: [./data/debug-command.log](./data/debug-command.log).
