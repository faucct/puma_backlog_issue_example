# Puma backlog issue example

I expect last request not to fail with nginx timeout cause the puma queue is limited.

```bash
vagrant up
vagrant ssh
for i in {1..100}; do curl -s localhost?10 > /dev/null & done
sleep 30
time curl localhost
```
