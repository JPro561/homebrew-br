class Br < Formula
    desc "Linguagem BR (Português / Brasileiro)"
    homepage "https://github.com/JPro561/BR"
    url "https://github.com/JPro561/BR/archive/refs/tags/v1.0.4.tar.gz"
    sha256 "5e429262ccd461c36fe79d92b54f00b5090dec3288dd5ba0c4313458d4a72e37"

    depends_on "node"

    def install
        libexec.install Dir["dist/*"]
        bin.write_exec_script libexec/"cli.js"
    end

    test do
        system "#{bin}/br", "--help"
    end
end
