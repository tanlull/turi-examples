# Turi Create Examples

## Prerequisite
* python3 `brew install python3`

## Install VirtualEnv
To make package installs only locally and not bleed into other project, let's use `virtualenv` 

1. Install virtualenv

```
pip3 install virtualenv
```

2. Create virtualenv

```
virtualenv venv 
```

3. Activate venv

```
source venv/bin/activate
```

If done correctly there should be `(venv)` in front of the prompt. For example

```
(venv) ~/p/apple-orange ❯❯❯ _
```

## Install Turi Create

```
pip3 install -U turicreate
```

## 
pip3 install ipykernel
python3 -m ipykernel install --user --name venv
