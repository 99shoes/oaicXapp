## Follow the documents until en-gNB in ZeroMQ Mode
https://openaicellular.github.io/oaic/setup5gnetwork.html
## Setup 5G Network
### Running the EPC
```sudo srsepc```
### en-gNB and UE in ZeroMQ Mode
### Running the en-gNB & connecting to near-RT RIC
```
export E2NODE_IP=`hostname  -I | cut -f1 -d' '`
export E2NODE_PORT=5006
export E2TERM_IP=`sudo kubectl get svc -n ricplt --field-selector metadata.name=service-ricplt-e2term-sctp-alpha -o jsonpath='{.items[0].spec.clusterIP}'`
```
### srsENB in ZeroMQ mode
```
sudo srsenb --enb.n_prb=50 --enb.name=enb1 --enb.enb_id=0x19B \
--rf.device_name=zmq --rf.device_args="fail_on_disconnect=true,tx_port0=tcp://*:2000,rx_port0=tcp://localhost:2001,tx_port1=tcp://*:2100,rx_port1=tcp://localhost:2101,id=enb,base_srate=23.04e6" \
--ric.agent.remote_ipv4_addr=${E2TERM_IP} --log.all_level=warn --ric.agent.log_level=debug --log.filename=stdout --ric.agent.local_ipv4_addr=${E2NODE_IP} --ric.agent.local_port=${E2NODE_PORT}
```

### srsUE in ZeroMQ mode
```
sudo srsue --gw.netns=ue1
```

### PING MODE
#### Uplink 
```sudo ip netns exec ue1 ping 172.16.0.1```
#### Downlink
```sudo ping <ue_ip>```

## Examine
Running the enb ue epc. In the enb, we will see the "RIC state ->ESTABLISHED"

```sudo kubectl get pods -A ```
Make sure that all the pods is ready, except for the "tiller-ricxapp" one
## To Check the packet
### Use tcpdump to generate a pcap file, and type 'ipconfig' to identify the network interface card, which is cni0."
```sudo tcpdump -i cni0 -w result.pcap```
### Make sure you see the deployment-ricplt-rtmgr for check the routing manager's log
```sudo kubectl logs -f deployment-ricplt-rtmgr-578c64f5cf-x9658 -n ricplt```

<blockquote style="background-color: #ff0000; padding: 10px; border: 1px solid #000000;">

**Open Wireshark and put the pcap file to this.**

**Type 'e2ap' in the filter, and you will find a packet with the E2AP protocol.**

**Decode it, and set the Field part to SCTP port, Value part to 36422.**

</blockquote>

![image](https://github.com/99shoes/oaicXapp/assets/82441856/a899e1e8-f834-44cc-8429-5b7dbd12519b)
![image](https://github.com/99shoes/oaicXapp/assets/82441856/8cec7ba8-1100-4fe0-be57-9347ce7e3dd5)
It will have successfulOutcome
![image](https://github.com/99shoes/oaicXapp/assets/82441856/452386d0-5386-4322-b61c-c7cf4d5f2edb)

:wave: Finally, we complete the Near-RT RIC with en-gNB

## xApp Deployment
Near-RT RIC Version: E-Release up
Applicable appmgr Version: 0.5.4 up
### Change the method, the newest release needs DMS_CLI
-- dms_cli offers rich set of command line utility to onboard hw-python xapp to chartmuseme. --

Note! Remember to check if the version of your environment is correct to avoid failure in operations!
I. Preparations
### 1.1 Install DMS_CLI
sudo -i
git clone https://gerrit.o-ran-sc.org/r/ric-plt/appmgr
cd ~/appmgr/xapp_orchestrater/dev/xapp_onboarder
pip3 install ./
Create a helm repository with port 8080, which can then be used to deploy xapp
docker run --restart=always -u 0 -it -d -p 8090:8080 -e DEBUG=1 -e STORAGE=local -e STORAGE_LOCAL_ROOTDIR=/charts -v $(pwd)/charts:/charts chartmuseum/chartmuseum:latest
Set environment variables (you need to do this again every time you open a new terminal!)
export CHART_REPO_URL=http://0.0.0.0:8090
Check if dms_cli is available
dms_cli health
# If it returns True, it means success
Uninstall dms_cli
pip3 uninstall xapp_onboarder

Chapters 2 to 4 are all about command introductions.
If you want to see the actual deployment process of xApp, please jump directly to Chapter 5!

II. xApp Onboarding/Deployment/Undeployment Related Commands
Onboard the xApp chart

bash
Copy code
dms_cli onboard --config_file_path=<CONFIG_FILE_PATH> --shcema_file_path=<SCHEMA_FILE_PATH>
View the onboarded charts

bash
Copy code
dms_cli get_charts_list
Delete an onboarded chart (make sure to fill in the correct chart name and version)

bash
Copy code
curl -X DELETE $CHART_REPO_URL/api/charts/<XAPP_CHART_NAME>/<VERSION>
Deploy xApp

bash
Copy code
dms_cli install --xapp_chart_name=XAPP_CHART_NAME --version=VERSION --namespace=NAMESPACE
Undeploy xApp

bash
Copy code
dms_cli uninstall --xapp_chart_name=XAPP_CHART_NAME --namespace=NAMESPACE
Update xApp to a new version

bash
Copy code
dms_cli upgrade --xapp_chart_name=<XAPP_CHART_NAME> --old_version=<OLD_VERSION> --new_version=<NEW_VERSION> --namespace=<NAMESPACE>
Revert xApp to an old version

bash
Copy code
dms_cli rollback --xapp_chart_name=XAPP_CHART_NAME --new_version=NEW_VERSION --old_version=OLD_VERSION --namespace=NAMESPACE
Check the status of xApp

bash
Copy code
dms_cli health_check XAPP_CHART_NAME NAMESPACE
III. xApp Deployment
There are multiple ways to deploy, choose one as needed!
3.1 Regular Deployment
Fill in the necessary information according to the already onboarded chart

bash
Copy code
dms_cli install --xapp_chart_name=helloxapp --version=1.0.0 --namespace=ricxapp
or
3.2 Custom Deployment
Download the values.yml file of the chart

bash
Copy code
dms_cli download_values_yaml --xapp_chart_name=helloxapp --version=1.0.0
Then modify values.yml according to your needs, and execute this step to deploy

bash
Copy code
dms_cli install --xapp_chart_name=helloxapp --version=1.0.0 --namespace=ricxapp --overridefile=values.yaml
IV. xApp Registration Steps
4.1 Get the IP of appmgr

bash
Copy code
export APPMGR_HTTP=`sudo kubectl get svc -n ricplt --field-selector metadata.name=service-ricplt-appmgr-http -o jsonpath='{.items[0].spec.clusterIP}'`
4.2 Check if appmgr is available

bash
Copy code
curl -i GET http://$APPMGR_HTTP:8080/ric/v1/health/ready
Response HTTP/1.1 200 OK indicates appmgr is available

4.3 Execute registration
After the xApp is deployed, it must first be registered to communicate with other components

Refer to your xapp's deployment config here, otherwise, errors will occur

bash
Copy code
curl -il -X 'POST' http://$APPMGR_HTTP:8080/ric/v1/register -H 'accept: application/json' -H 'Content-Type: application/json' -d '{
"appName": "",
"appVersion": "", 
"appInstanceName": "", 
"httpEndpoint": "",
"rmrEndpoint": "",
"config":""
}'
“appName”: Name of the xapp
“appVersion”: Version during installation
“appInstanceName”: Must be the same as the name during xapp deployment
“httpEndpoint”: HTTP service IP of xapp (leave empty if not available)
“rmrEndpoint”: RMR service IP of xapp
“config”: Content of the config during installation
4.4 View the currently registered xApp information

bash
Copy code
curl -X GET http://$APPMGR_HTTP:8080/ric/v1/xapps | jq .
Deregister xApp

bash
Copy code
curl -il -X 'POST' http://$APPMGR_HTTP:8080/ric/v1/deregister -H 'accept: application/json' -H 'Content-Type: application/json' -d '{
"appName": "",
"appInstanceName": ""
}'
“appName”: Name during registration
“appInstanceName”: Name during registration

V. Example: KPI Monitor xApp Deployment and Registration
Follow the order, onboard chart -> install xApp -> register xApp -> success!

Taking OIAC's KPI Monitor as an example

5.1 Build the image

bash
Copy code
cd ~
git clone https://github.com/openaicellular/ric-scp-kpimon.git -b upgraded-kpimon
cd ric-scp-kpimon
Start the build

bash
Copy code
docker build . -t xApp-registry.local:5008/scp-kpimon:1.0.1 --no-cache
5.2 Onboard xapp's chart
Since OAIC's KPI monitor lacks schema.json, we need to create it ourselves

bash
Copy code
vim schema.json



fill in the content below
{
    "$schema": "http://json-schema.org/draft-07/schema",
    "$id": "http://example.com/example.json",
    "type": "object",
    "title": "The root schema",
    "description": "The root schema comprises the entire JSON document.",
    "default": {},
    "examples": [
       
                            }
                        ]
                    }
                },
                "rxMessages": {
                    "$id": "#/properties/rmr/properties/rxMessages",
                    "type": "array",
                    "title": "The rxMessages schema",
                    "description": "An explanation about the purpose of this instance.",
                    "default": [],
                    "examples": [
                        [
                            "RIC_SUB_RESP",
                            "RIC_INDICATION",
                            "RIC_SUB_RESP",
                            "RIC_SUB_FAILURE",
                            "RIC_SUB_DEL_RESP",
                            "RIC_SUB_DEL_FAILURE"
                            
                        ]
                    ],
                    "additionalItems": true,
                    "items": {
                        "$id": "#/properties/rmr/properties/rxMessages/items",
                        "anyOf": [
                            {
                                "$id": "#/properties/rmr/properties/rxMessages/items/anyOf/0",
                                "type": "string",
                                "title": "The first anyOf schema",
                                "description": "An explanation about the purpose of this instance.",
                                "default": "",
                                "examples": [
                                    "RIC_SUB_RESP",
                                    "RIC_INDICATION",
                                    "RIC_SUB_RESP",
                                    "RIC_SUB_FAILURE",
                                    "RIC_SUB_DEL_RESP",
                                    "RIC_SUB_DEL_FAILURE"
                            
                                ]
                            }
                        ]
                    }
                },
                "policies": {
                    "$id": "#/properties/rmr/properties/policies",
                    "type": "array",
                    "title": "The policies schema",
                    "description": "An explanation about the purpose of this instance.",
                    "default": [],
                    "examples": [
                        []
                    ],
                    "additionalItems": true,
                    "items": {
                        "$id": "#/properties/rmr/properties/policies/items"
                    }
                }
            },
            "additionalProperties": true
        }
    },
    "additionalProperties": true
}
execute onboard
export CHART_REPO_URL=http://0.0.0.0:8090
dms_cli onboard scp-kpimon-config-file.json schema.json
5.3 Execute Deployment
dms_cli install --xapp_chart_name=scp-kpimon --version=1.0.1 --namespace=ricxapp
5.4 Register KPI xApp
Before proceeding with registration, ensure that your eNB or gNB is already connected to the Near-RT RIC!
# 只需要輸入一次
export APPMGR_HTTP=`sudo kubectl get svc -n ricplt --field-selector metadata.name=service-ricplt-appmgr-http -o jsonpath='{.items[0].spec.clusterIP}'`

# 每次註冊都要輸入一次
curl -il -X 'POST' http://$APPMGR_HTTP:8080/ric/v1/register -H 'accept: application/json' -H 'Content-Type: application/json' -d '{
"appName": "scp-kpimon",
"appVersion": "1.0.1", 
"appInstanceName": "scp-kpimon",
"httpEndpoint": "<none>:8080",
"rmrEndpoint": "<none>:4560",


A response of HTTP/1.1 201 Created indicates a successful operation.
5.5 Check if Registration Was Successful
You should be able to see the registration information for the KPI xApp.
5.6 Other Common Commands
Deregister
curl -il -X 'POST' http://$APPMGR_HTTP:8080/ric/v1/deregister -H 'accept: application/json' -H 'Content-Type: application/json' -d '{
"appName": "scp-kpimon",
"appInstanceName": "scp-kpimon"
}'

A response of HTTP/1.1 204 No Content indicates a successful operation.
Check the logs of the KPI monitor
sudo kubectl logs -f -n ricxapp -l app=ricxapp-scp-kpimon
Redeploy KPI monitor
sudo kubectl -n ricxapp rollout restart deployment ricxapp-scp-kpimon
Uninstall KPI monitor
dms_cli uninstall --xapp_chart_name=scp-kpimon --namespace=ricxapp
A response of OK indicates a successful operation.



Reference: https://hackmd.io/@risty/ByXQhzMys/https%3A%2F%2Fhackmd.io%2FX1CVk6E5Q9G_7HBfRAof8A

