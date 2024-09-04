---
title: "Automating Python Execution on a Raspberry Pi with a virtual environment"
author: Richard
date: 2024-08-26
image: /assets/images/raspberrypi.png
---

```markdown
# Automating Python Script Execution on Raspberry Pi Using systemd

In this guide, you will learn how to automate the execution of a Python script on your Raspberry Pi using a `systemd` service. This can be particularly useful for running scripts automatically at startup without any manual intervention.

## Step 1: Create a systemd Service File

First, create a new service file in the `/etc/systemd/system/` directory. You can name this file anything you like, but for this guide, we'll use `mygoodcode.service`.

```bash
sudo nano /etc/systemd/system/mygoodcode.service
```

## Step 2: Add the Following Content to the Service File

Replace the paths and script names as needed for your setup. This service will activate a Python virtual environment and run a Python script.

```ini
[Unit]
Description=mygoodcode Python Script Service
After=network.target

[Service]
User=iot
WorkingDirectory=/home/iot/mygoodcode
ExecStart=/bin/bash -c 'source /home/iot/mygoodcode/bin/activate; /usr/bin/python3 /home/iot/mygoodcode/app.py'
Restart=always
Environment=PYTHONUNBUFFERED=1

[Install]
WantedBy=multi-user.target
```

### Explanation:
- **User**: This specifies the user under which the script will run (replace `iot` with your actual username if different).
- **WorkingDirectory**: The directory where your script and virtual environment are located.
- **ExecStart**: This is the command to start your script. It first activates the virtual environment and then runs the Python script.
- **Restart**: Ensures that the service is always restarted if it fails.
- **Environment**: The `PYTHONUNBUFFERED=1` setting makes sure that the Python output is flushed immediately, which can be useful for logging.

## Step 3: Reload systemd Configuration

After creating the service file, reload the `systemd` configuration to apply the changes:

```bash
sudo systemctl daemon-reload
```

## Step 4: Enable the Service to Start on Boot

Enable the service to automatically start at boot:

```bash
sudo systemctl enable mygoodcode.service
```

## Step 5: Start the Service Manually to Test It

Start the service manually to ensure everything is working correctly:

```bash
sudo systemctl start mygoodcode.service
```

You can check the status of the service to verify that it's running:

```bash
sudo systemctl status mygoodcode.service
```

## Step 6: Troubleshooting

If the service fails to start, check the logs for more details:

```bash
journalctl -u mygoodcode.service -b
```

This will show you the full log of the service, which may provide more insight into any issues.

## Conclusion

By following this guide, you’ve successfully automated the execution of your Python script using `systemd`. Your script will now run automatically on boot and restart if it ever crashes.
```
