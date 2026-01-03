class Br < Formula
    desc "Linguagem BR (Português / Brasileiro)"
    homepage "https://github.com/JPro561/BR"
    url "https://github.com/JPro561/BR/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

    depends_on "node"

    def install
        bin.install "dist/cli.js" => "br"
    end

    test do
        system "#{bin}/br", "--help"
    end
end

