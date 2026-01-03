class Br < Formula
    desc "Linguagem BR (Português / Brasileiro)"
    homepage "https://github.com/JPro561/BR"
    url "https://github.com/JPro561/BR/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "13e93b94aa50fe72c2651b877072b3a095538ed099626ae5d7a9b81f24b9d3af"

    depends_on "node"

    def install
        bin.install "dist/cli.js" => "br"
    end

    test do
        system "#{bin}/br", "--help"
    end
end

