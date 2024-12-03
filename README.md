# Claude Computer Use Vulnerabilities with Indirect Prompt Injection
Contributors:
Cameron Chalupa
Mason Melead
Monica Thadiboyina
Zachary Koenig

## Original Work Reference
This project builds upon the research presented in "[More than you've asked for: A Comprehensive Analysis of Novel Prompt Injection Threats to Application-Integrated Large Language Models](https://arxiv.org/abs/2302.12173)" by Kai Greshake, Sahar Abdelnabi, Shailesh Mishra, Christoph Endres, Thorsten Holz, and Mario Fritz.

## Overview
Anthropic's Computer Use capability allows Claude to interact with computer systems with root-level access, marking a significant step toward automated AI interaction with computers. Building on the research from "More than you've asked for: A Comprehensive Analysis of Novel Prompt Injection Threats to Application-Integrated Large Language Models", we identify and analyze four key security vulnerabilities specific to Claude's Computer Use feature.
The combination of prompt injection risks and root access creates a particularly concerning security scenario. Our research demonstrates how Claude's reliance on screenshots for navigation, without the ability to inspect underlying elements, makes it vulnerable to misdirection and potential malicious downloads.
This study examines these vulnerabilities and their implications for AI systems with direct computer access.

## Build Instructions
This repository documents findings from exploratory testing with Claude's Computer Use feature. Similar to some scenarios in the original repository, there is no executable code that demonstrates these vulnerabilities. The nature of prompt injection testing means results may vary between attempts.

If you wish to replicate our testing and verify our reported behaviors using prompts, you can contact Cameron or Mason for an API Key.

1. Install Docker Desktop: https://www.docker.com/products/docker-desktop/ (may require system restart)

2. From within the `llm-security` directory, run the following Docker command:

    ```bash
    export ANTHROPIC_API_KEY=%your_api_key%
    docker run \
        -e ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY \
        -v $HOME/.anthropic:/home/computeruse/.anthropic \
        -p 5900:5900 \
        -p 8501:8501 \
        -p 6080:6080 \
        -p 8080:8080 \
        -it ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest
    ```
3. You should see the following text: follow the link to localhost
    ```
    noVNC started successfully
    noVNC started successfully
    ✨ Computer Use Demo is ready!
    ➡️  Open http://localhost:8080 in your browser to begin
    ```
4. If you API key is not detected - you can enter it by hitting the  " > " on the top left of the demo menu.

5. You are good to go, happy prompting!

## Research Results and Contributions

Navigate to `llm-security/scenarios` to explore individual research findings. Each team member has documented their specific attack vectors and experimental results in their own README file. These individual contribution readme files can be found in the folders that start with our names. (Cameron, Mason, Monica and Zach)

Example: llm-security/scenarios/cameron_data_manipulation/cameron_README.md

 - Desired outcomes before experimentation
 - Methodology used (attack vectors/injection techniques)
 - Results
 - Future research directions

Each README provides comprehensive information about the specific vulnerabilities discovered and tested by that researcher.


## Original paper citation
```bibtex
@misc{https://doi.org/10.48550/arxiv.2302.12173,
  doi = {10.48550/ARXIV.2302.12173},
  url = {https://arxiv.org/abs/2302.12173},
  author = {Greshake, Kai and Abdelnabi, Sahar and Mishra, Shailesh and Endres, Christoph and Holz, Thorsten and Fritz, Mario},
  keywords = {Cryptography and Security (cs.CR), Artificial Intelligence (cs.AI), Computation and Language (cs.CL), Computers and Society (cs.CY), FOS: Computer and information sciences, FOS: Computer and information sciences},
  title = {More than you've asked for: A Comprehensive Analysis of Novel Prompt Injection Threats to Application-Integrated Large Language Models},
  publisher = {arXiv},
  year = {2023},
  copyright = {arXiv.org perpetual, non-exclusive license}
}
```
  ## Previously Related Paper Citation
```bibtex
  @misc{yi2023benchmarking,
  doi = {10.48550/arxiv.2312.14197},
  url = {https://arxiv.org/abs/2312.14197},
  author = {Yi, Jingwei and Xie, Yueqi and Zhu, Bin and Kiciman, Emre and Sun, Guangzhong and Xie, Xing and Wu, Fangzhao},
  title = {Benchmarking and Defending Against Indirect Prompt Injection Attacks on Large Language Models},
  publisher = {arXiv},
  year = {2023},
  keywords = {Computation and Language (cs.CL), Artificial Intelligence (cs.AI)},
  copyright = {arXiv.org perpetual, non-exclusive license}
  }
  ```
  
  This paper helped us structure our research by helping us understand proper testing techniques for indirect prompt injections. Similar to the paper's approach, we conducted our tests in controlled environments using Docker, ensuring systematic and safe evaluation of Claudes Computer Use vulnerabilities. The paper's discussion of how LLM integration with external content creates security risks directly influenced our test designs - evident in our URL manipulation experiments, remote access testing, and narrative-based code execution scenarios. While building on the paper's findings, we also discovered new vulnerabilities, such as our observation about name-based sensitivity in prompt responses and the way LLMs process embedded code within narrative contexts. Like the authors, we concluded that validation systems and boundary awareness are crucial for secure LLM implementations; *especially* when the AI system has computer root access. 
  
  ## Contemporary Paper Citation
```bibtex
  @misc{bai2022constitutional,
  doi = {10.48550/ARXIV.2212.08073},
  url = {https://arxiv.org/abs/2212.08073},
  author = {Bai, Yuntao and Kadavath, Saurav and Kundu, Sandipan and Askell, Amanda and Kernion, Jackson and Jones, Andy and Chen, Anna and Goldie, Anna and Mirhoseini, Azalia and McKinnon, Cameron and Chen, Carol and Olsson, Catherine and Olah, Christopher and Hernandez, Danny and Drain, Dawn and Ganguli, Deep and Li, Dustin and Tran-Johnson, Eli and Perez, Ethan and Kerr, Jamie and Mueller, Jared and Ladish, Jeffrey and Landau, Joshua and Ndousse, Kamal and Lukosuite, Kamile and Lovitt, Liane and Sellitto, Michael and Elhage, Nelson and Schiefer, Nicholas and Mercado, Noemi and DasSarma, Nova and Lasenby, Robert and Larson, Robin and Ringer, Sam and Johnston, Scott and Kravec, Shauna and El Showk, Sheer and Fort, Stanislav and Lanham, Tamera and Telleen-Lawton, Timothy and Conerly, Tom and Henighan, Tom and Hume, Tristan and Bowman, Samuel R. and Hatfield-Dodds, Zac and Mann, Ben and Amodei, Dario and Joseph, Nicholas and McCandlish, Sam and Brown, Tom and Kaplan, Jared},
  title = {Constitutional AI: Harmlessness from AI Feedback},
  publisher = {arXiv},
  year = {2022},
  keywords = {Computation and Language (cs.CL), Artificial Intelligence (cs.AI)},
  copyright = {arXiv.org perpetual, non-exclusive license}
}
```


