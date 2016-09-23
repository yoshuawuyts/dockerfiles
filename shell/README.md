# service-shell
Mount a shell script into a container and run it.

## Variables
```sh
FILE   /usr/src/app/cmd.sh  Command to run from the shell script
```

## Docker
```sh
$ docker run \
  -v <local_script>:/usr/src/app/cmd.sh \
  yoshuawuyts/service-shell
```

## Kubernetes
For kubernetes it can be useful to run this as a [daemonset][ds] to instrument
tasks on certain nodes such as cleanup and other tasks. Until kubernetes builds
in disk management too, this will probably be the cleanest way of managing
machines.
```json
{
  "apiVersion": "extensions/v1beta1",
  "kind": "DaemonSet",
  "metadata": {
    "name": "shell-daemon"
  },
  "spec": {
    "selector": {
      "matchLabels": {
        "tier": "tooling",
        "app": "shell",
        "role": "util"
      }
    },
    "template": {
      "metadata": {
        "labels": {
          "tier": "tooling",
          "app": "shell",
          "role": "util"
        }
      },
      "spec": {
        "restartPolicy": "Always",
        "containers": [
          {
            "name": "service-shell",
            "image": "yoshuawuyts/service-shell",
            "securityContext": {
              "privileged": true
            }
          }
        ]
      }
    }
  }
}
```

## License
[MIT](https://tldrlegal.com/license/mit-license)

[ds]: http://kubernetes.io/docs/admin/daemons/#what-is-a-daemon-set
