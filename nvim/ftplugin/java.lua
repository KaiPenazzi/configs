local config = {
    cmd = { '/usr/bin/jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    settings = {
        java = {
            configuration = {
                runtimes = {
                    {
                        name = "JavaSE-21",
                        path = "/usr/lib/jvm/java-21-openjdk/",
                    },
                    {
                        name = "JavaSE-17",
                        path = "/usr/lib/jvm/java-17-openjdk/",
                    },
                }
            }
        }
    },

    init_options = {
        bundles = vim.list_extend(
            { vim.fn.glob(
                "/home/kai/someLibs/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
                1) },
            vim.split(vim.fn.glob("/home/kai/someLibs/vscode-java-test/server/*.jar", 1), "\n")
        )
    }
}

require('jdtls').start_or_attach(config)
