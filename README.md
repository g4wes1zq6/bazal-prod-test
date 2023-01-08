# bazal-actions
The repository where Bazal's public interface definitions get compiled to TypeScript by GitHub Actions.

## **Notice**
You are currently viewing the master branch of this repository, best to use the branch tab to select the version appropriate for you as the master branch regularly updates for fixes.

## **Building**
- If you're compiling locally, feel free to run the `generate.sh` command via Git Bash though it may take a while depending on your hardware.

- If you want to compile certain Protobuf schemas, create a `targets.txt` file with schemas you want to compile and run `generate-manual.sh`.

- If you're compiling via GitHub Actions, feel free to go to the Actions tab of the repository, click `Protobuf2TS Build and Publish` and click run workflow with the branch selected to `master`.