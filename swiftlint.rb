class Swiftlint < Formula
  desc "Experimental tool to enforce Swift style and conventions"
  homepage "https://github.com/metova/SwiftLint"
  url "https://github.com/metova/SwiftLint.git", :tag => "0.10.0m1", :revision => "8d3be6546d580d63bc2f294baddc47e091774906"
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
