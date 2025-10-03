import React from 'react';

interface AdminLayoutProps {
  children: React.ReactNode;
  activeSection: string;
  onSectionChange: (section: string) => void;
  sectionTitle?: string;
}

export default function AdminLayout({ children, sectionTitle }: AdminLayoutProps) {
  return (
    <div className="h-full flex flex-col">
      {sectionTitle && (
        <div className="px-6 pt-6 pb-4">
          <h1 className="text-2xl font-bold text-gray-900">{sectionTitle}</h1>
        </div>
      )}
      <div className="flex-1 overflow-hidden">
        {children}
      </div>
    </div>
  );
}