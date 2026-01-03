class Br < Formula
    desc "Linguagem BR (Português / Brasileiro)"
    homepage "https://github.com/JPro561/BR"
    url "https://github.com/JPro561/BR/archive/refs/tags/v1.0.4.tar.gz"
    sha256 "3e3d73f031e7f142dbc93fa33ea6a6948b25b4c0c3c2b4b668194396aa2b9b35"

    depends_on "node"

    def install
        libexec.install Dir["dist/*"]
        bin.write_exec_script libexec/"cli.js"
    end

    test do
        system "#{bin}/br", "--help"
    end
end
