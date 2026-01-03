class Br < Formula
    desc "Linguagem BR (Português / Brasileiro)"
    homepage "https://github.com/JPro561/BR"
    url "https://github.com/JPro561/BR/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "6b960edd9706ddad34e2d46e60c8952cc83abb1c312181e8a397dad1a0d691ad"

    depends_on "node"

    def install
        libexec.install Dir["dist/*"]
        bin.write_exec_script libexec/"cli.js"
    end

    test do
        system "#{bin}/br", "--help"
    end
end
