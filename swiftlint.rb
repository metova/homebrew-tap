class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/metova/SwiftLint"
  url "https://github.com/metova/SwiftLint.git", :tag => "0.10.0m2", :revision => "c1e021242b164bd01e41db47799db9b9b656a5c4"
  head "https://github.com/metova/SwiftLint.git"

  depends_on :xcode => ["7.1", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/SwiftLint.dst"
  end

  test do
    (testpath/"Test.swift").write "import Foundation\n"
    system "#{bin}/swiftlint"
  end
end
