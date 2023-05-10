defmodule Wabanex.IMC do
  def calculate(filename) do
    result = File.read(filename)
    handle_file(result)
  end

  defp handle_file({:ok, content}) do
    content
  end

  defp handle_file({:error, reason}) do
    reason
  end
end
