# My-Token-Faucet

My first token faucet.

## How to deploy with Remix

Requirements:

- [Remixd package](https://www.npmjs.com/package/@remix-project/remixd)

First, pull the project to your machine. Then run the remixd package with `remix -s <path to project>` and go to [Remix IDE](https://remix.ethereum.org/). On the left panel of the Remix IDE, click on the `default_workspace` button to select the `- connect to localhost -` option. Once it's connected, open the `MyTokenFaucet` contract and compile it from the compilation tab. it's the one with the Solidity logo on it. Then, go to the deployment which is shown with the Ethereum logo. Select your environment, fill in the required fields, and click on the `deploy` button. If you selected the injected Web3 environment, you will get a prompt to confirm the transaction. Click on the `Yes` button. After that, you will see the deployed contract address and contracts methods on the left panel.

## Possible problems

### Remix is not connecting to local

Try using the `http` instead of `https` in your browser.
