import { PhoneCall } from 'capacitor-plugin-phonecall';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    PhoneCall.echo({ value: inputValue })
}
