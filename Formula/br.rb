class Br < Formula
    desc "Linguagem BR (Português / Brasileiro)"
    homepage "https://github.com/JPro561/BR"
    url "https://github.com/JPro561/BR/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "8a5ea7e612433e429d897c669b6fec1c8a6b37399c560b86477edc273e5c985f"

    depends_on "node"

    def install
        libexec.install Dir["dist/*"]
        bin.write_exec_script libexec/"cli.js"
    end

    test do
        system "#{bin}/br", "--help"
    end
end
