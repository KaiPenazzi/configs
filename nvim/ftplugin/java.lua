local config = {
    cmd = { '/usr/bin/jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'mvnw', 'gradlew' }, { upward = true })[1]),
    settings = {
        java = {
            configuration = {
                runtimes = {
                    {
                        name = "JavaSE-27",
                        path = "/usr/lib/jvm/java-27-openjdk/",
                    },
                }
            },
        },
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
