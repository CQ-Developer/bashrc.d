> .bashrc

```shell
# If not running interactively, don't do anything
if [[ $- != *i* ]]; then
	return
fi

# local configs from ~/.bashrc.d
if [[ -d ~/.bashrc.d ]]; then
	for config in ~/.bashrc.d/*.sh; do
		if [[ -f "$config" ]]; then
			. "$config"
		fi
	done
fi
```
