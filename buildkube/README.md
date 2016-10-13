# buildkube
Run `buildkite` with `kubernetes` access.

## Warning
This is probably a bad idea; generally `buildkite` should never need to access
`kubernetes`.

- To upload containers to a registry consider setting credentials correctly
- To deploy infrastructure on the cluster, consider pushing updated `yaml`
  files to an `infrastructure` repository

By providing direct `kubernetes` access to `buildkite` it breaks the concept of
"intfrastructure as code" and the idea of replayable builds. Consider using
this a hack.

## Usage
```sh
$ docker run -i yoshuawuyts/buildkube
```

## See Also
- https://github.com/ahdinosaur/docker-buildkube
