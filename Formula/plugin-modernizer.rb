class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1982.v8a_f9d47066f2".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1982.v8a_f9d47066f2/jenkins-plugin-modernizer-1982.v8a_f9d47066f2.jar"
    sha256 "1b49a284bbb080bf75a00e76c073d03d5ef34cffbfbbb44333a4a50d075c35eb"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1982.v8a_f9d47066f2.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1982.v8a_f9d47066f2.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
