# Attack Vector

Put a description of the attack vector here

# Reproduction Process:

> [!CAUTION]
> The following procedure invovles open-source red team code. Proceed at your own risk.

1. In a quarantined linux enviroment run the following command: `curl https://sliver.sh/install|sudo bash`
2. run `sliver`
3. sliver > `sessions` will list all current sessions. Currently, this list should be empty.
4. Start up the "victim" machine and start an appication that implements functions using Anthropic's computer use API. In this project, we used a docker enviroment and the demo computer use app provided by Anthropic. The instructions for starting this enviroment can be found in the [main README](https://github.com/zkoenigxd/llm-security/blob/main/README.md).



![screenshot](Sliver_start.png)



# Presenatation:
### My contribution to the group project:
- Set up the git and project enviroment.
- Walked the team through running the project and ensured each member had the base project running
- Read and researched the Anthropic computer use documentation and shared the results with the team.
    - Researched AI tool use
    - Researched currently available computer-use apps
    - Discovered attack vectors based on the API's limitations and inherit vulnerabilities.
- Demoed the Command and Control attack vector.

### Code and demonstration of results:
- The small bit of code needed and the description of the process can be found in the current folder and above in this file.
### Description of the code:
- Based on the attack vectors explored by the other teammates, the simplest way to achive this attack is through a standard link-initialized phishing attack. Any request that is suseptable to the demonstrated "click-link" attack vector can be made vulnerable to this attack.
- Some prompt injection before the download link was required to hide the action from the user.
### What was learned:
### How it applies to Computer Systems Security:
### Application areas: 

### Challenges and Lessons Learned
1. Installing and running docker
    - With no prior experience with docker and having just learned the fundamentals of VMs, getting the enviroment set up in a safe way was a major hurtle.
    - It was discovered that running docker on a VM required some special configuartions be made on the host machine, and the performance proved atrocious.
    - After researching the technology, it was discovered that docker enviroments provided adiquite security on the host device for the tests we intended to run.
    - Lesson - always, ALWAYS read the docs of any unfamiliar technology.
2. 

# Submission:

Full commented code and the code is clean, formatted.

The README file in the GitHub repository indicates clearly how to easily clone and build/deploy the code. The README file in the GitHub repository clearly indicates what functionality does (and does not, if applicable) work in the final version of the application. Additionally, it should include references to two scholarly papers: one representing prior research, serving as the foundational bedrock for the current study, and another representing contemporary work that acknowledges and builds upon the findings of the current paper. This practice is akin to the methodology of an archeologist, meticulously documenting the lineage of ideas and advancements within the academic landscape.

Any data required to test/demo the application has been provided within the project. Instructors can run the code and reproduce the results shown in the class.