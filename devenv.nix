{ pkgs, lib, config, inputs, ... }:

{
    # https://devenv.sh/basics/
    env.GREET = "devenv";

    # https://devenv.sh/packages/
    packages = [ pkgs.git ];

    # https://devenv.sh/languages/
    languages.php = {
        enable = true;
    };

    languages.javascript = {
        enable = true;
        npm.enable = true;
    };

    # https://devenv.sh/scripts/
    scripts.hello.exec = ''
        echo hello from $GREET
    '';

    enterShell = ''
        if [[ ! -d vendor ]]; then
            composer install
            composer require statamic/cli
        fi
        export PATH="./vendor/bin:$PATH"
    '';

    # https://devenv.sh/tasks/
    # tasks = {
    #   "myproj:setup".exec = "mytool build";
    #   "devenv:enterShell".after = [ "myproj:setup" ];
    # };

    # https://devenv.sh/tests/
    enterTest = ''
        echo "Running tests"
        git --version | grep --color=auto "${pkgs.git.version}"
    '';

    # https://devenv.sh/pre-commit-hooks/
    # pre-commit.hooks.shellcheck.enable = true;

    # See full reference at https://devenv.sh/reference/options/
}
