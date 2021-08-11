# Redoxer Github Action

Runs [`redoxer`](https://gitlab.redox-os.org/redox-os/redoxer) as a github
action.

## Usage

```yaml
      - uses: coolreader18/redoxer-action@v1
        with:
          # the redoxer subcommand to use
          command: check
          # args to pass to the command (optional)
          args: --features foo,bar
```

## License

This project is licensed under the MIT license. Please see the
[LICENSE](LICENSE) file for more details.
