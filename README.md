# Yopass

To install define namespace and global environment variable with setting `--set global.env` (`dev` environment is selected by default).

Example:
```
helm install --set global.env=production -n production yopass
```