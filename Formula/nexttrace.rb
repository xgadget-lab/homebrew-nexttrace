class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.7"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.7.tar.gz"
    sha256 "605a35ffcda3721a590c2ae6f921ab370c2d7173abb0b779b794b5159accc69b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.7' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
