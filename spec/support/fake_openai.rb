class FakeOpenAI
  def self.call(env)
    [200, { "Content-Type" => "application/json" }, [{ choices: [{ text: "Sample response from OpenAI." }] }.to_json]]
  end
end
