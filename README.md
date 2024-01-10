Run:
```bash
bash <(curl -Ls https://raw.githubusercontent.com/TonyLCH/renewsh/main/renews-domain.sh)
```
OR
```
bash <(curl -Ls https://raw.githubusercontent.com/TonyLCH/renewsh/main/renews.sh)
```
Core install:
```
bash <(curl -Ls https://raw.githubusercontent.com/TonyLCH/renewsh/main/core.sh)
```
Remove old core:
```
apt --purge autoremove
```

Test
```
curl -Lso- bench.sh | bash
```
