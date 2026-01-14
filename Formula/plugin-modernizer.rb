class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2632.v82d65e207e99".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2632.v82d65e207e99/jenkins-plugin-modernizer-2632.v82d65e207e99.jar"
    sha256 "38800abaea2f0645ba9505282dcea4ee4a0b9dcbc3caf4d5e15c47fbe1043459"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2632.v82d65e207e99.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2632.v82d65e207e99.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
