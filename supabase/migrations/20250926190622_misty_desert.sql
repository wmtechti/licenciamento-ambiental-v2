/*
  # Fix Supabase connection error for license_processes table

  1. Security Policy
    - Add RLS policy to allow anonymous users to perform SELECT operations for connection testing
    - The policy uses `USING (false)` to ensure no actual data is exposed
    - This allows the Supabase client to verify table existence without compromising security

  2. Purpose
    - Resolves PGRST205 error when the frontend tries to connect to Supabase
    - Enables connection testing while maintaining data privacy
    - Required for the application to load properly
*/

-- Create policy to allow anon role to select count from license_processes
-- This is needed for Supabase connection testing but doesn't expose any data
CREATE POLICY "Allow anon to select count from license_processes" ON public.license_processes
  FOR SELECT TO anon
  USING (false);